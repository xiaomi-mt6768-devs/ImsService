.class Landroidx/documentfile/provider/TreeDocumentFile;
.super Landroidx/documentfile/provider/DocumentFile;
.source "TreeDocumentFile.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroidx/documentfile/provider/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .param p1, "parent"    # Landroidx/documentfile/provider/DocumentFile;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "uri"    # Landroid/net/Uri;

    .line 38
    invoke-direct {p0, p1}, Landroidx/documentfile/provider/DocumentFile;-><init>(Landroidx/documentfile/provider/DocumentFile;)V

    .line 39
    iput-object p2, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    .line 40
    iput-object p3, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    .line 41
    return-void
.end method

.method private static closeQuietly(Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/lang/AutoCloseable;

    .line 169
    if-eqz p0, :cond_0

    .line 171
    :try_start_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    goto :goto_0

    .line 172
    :catch_1
    move-exception v0

    .line 173
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 177
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static createFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;

    .line 54
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public canRead()Z
    .locals 2

    .line 114
    iget-object v0, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/DocumentsContractApi19;->canRead(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public canWrite()Z
    .locals 2

    .line 119
    iget-object v0, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/DocumentsContractApi19;->canWrite(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public createDirectory(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;
    .locals 3
    .param p1, "displayName"    # Ljava/lang/String;

    .line 64
    iget-object v0, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    const-string v2, "vnd.android.document/directory"

    invoke-static {v0, v1, v2, p1}, Landroidx/documentfile/provider/TreeDocumentFile;->createFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 66
    .local v0, "result":Landroid/net/Uri;
    if-eqz v0, :cond_0

    new-instance v1, Landroidx/documentfile/provider/TreeDocumentFile;

    iget-object v2, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Landroidx/documentfile/provider/TreeDocumentFile;-><init>(Landroidx/documentfile/provider/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;
    .locals 3
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;

    .line 46
    iget-object v0, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1, p1, p2}, Landroidx/documentfile/provider/TreeDocumentFile;->createFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 47
    .local v0, "result":Landroid/net/Uri;
    if-eqz v0, :cond_0

    new-instance v1, Landroidx/documentfile/provider/TreeDocumentFile;

    iget-object v2, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Landroidx/documentfile/provider/TreeDocumentFile;-><init>(Landroidx/documentfile/provider/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public delete()Z
    .locals 2

    .line 125
    :try_start_0
    iget-object v0, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public exists()Z
    .locals 2

    .line 133
    iget-object v0, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/DocumentsContractApi19;->exists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 78
    iget-object v0, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/DocumentsContractApi19;->getName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .line 84
    iget-object v0, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/DocumentsContractApi19;->getType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 72
    iget-object v0, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isDirectory()Z
    .locals 2

    .line 89
    iget-object v0, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/DocumentsContractApi19;->isDirectory(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public isFile()Z
    .locals 2

    .line 94
    iget-object v0, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/DocumentsContractApi19;->isFile(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public isVirtual()Z
    .locals 2

    .line 99
    iget-object v0, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/DocumentsContractApi19;->isVirtual(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public lastModified()J
    .locals 2

    .line 104
    iget-object v0, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/DocumentsContractApi19;->lastModified(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .locals 2

    .line 109
    iget-object v0, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/DocumentsContractApi19;->length(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public listFiles()[Landroidx/documentfile/provider/DocumentFile;
    .locals 11

    .line 139
    iget-object v0, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 140
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    .line 141
    invoke-static {v1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 142
    .local v7, "childrenUri":Landroid/net/Uri;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v1

    .line 144
    .local v8, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v9, 0x0

    .line 146
    .local v9, "c":Landroid/database/Cursor;
    const/4 v1, 0x1

    const/4 v10, 0x0

    :try_start_0
    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "document_id"

    aput-object v1, v3, v10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v9, v1

    .line 148
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "documentId":Ljava/lang/String;
    iget-object v2, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v2, v1}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 152
    .local v2, "documentUri":Landroid/net/Uri;
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    nop

    .end local v1    # "documentId":Ljava/lang/String;
    .end local v2    # "documentUri":Landroid/net/Uri;
    goto :goto_0

    .line 157
    :cond_0
    nop

    :goto_1
    invoke-static {v9}, Landroidx/documentfile/provider/TreeDocumentFile;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 158
    goto :goto_2

    .line 157
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "DocumentFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed query: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 160
    :goto_2
    new-array v1, v10, [Landroid/net/Uri;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/Uri;

    .line 161
    .local v1, "result":[Landroid/net/Uri;
    array-length v2, v1

    new-array v2, v2, [Landroidx/documentfile/provider/DocumentFile;

    .line 162
    .local v2, "resultFiles":[Landroidx/documentfile/provider/DocumentFile;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 163
    new-instance v4, Landroidx/documentfile/provider/TreeDocumentFile;

    iget-object v5, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    aget-object v6, v1, v3

    invoke-direct {v4, p0, v5, v6}, Landroidx/documentfile/provider/TreeDocumentFile;-><init>(Landroidx/documentfile/provider/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V

    aput-object v4, v2, v3

    .line 162
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 165
    .end local v3    # "i":I
    :cond_1
    return-object v2

    .line 157
    .end local v1    # "result":[Landroid/net/Uri;
    .end local v2    # "resultFiles":[Landroidx/documentfile/provider/DocumentFile;
    :goto_4
    invoke-static {v9}, Landroidx/documentfile/provider/TreeDocumentFile;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 158
    throw v1
.end method

.method public renameTo(Ljava/lang/String;)Z
    .locals 3
    .param p1, "displayName"    # Ljava/lang/String;

    .line 182
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    .line 183
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    .line 182
    invoke-static {v1, v2, p1}, Landroid/provider/DocumentsContract;->renameDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 184
    .local v1, "result":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 185
    iput-object v1, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    const/4 v0, 0x1

    return v0

    .line 188
    :cond_0
    return v0

    .line 190
    .end local v1    # "result":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method
