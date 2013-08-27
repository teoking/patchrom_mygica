.class final Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;
.super Landroid/util/LruCache;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreparedStatementCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/database/sqlite/SQLiteConnection$PreparedStatement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/database/sqlite/SQLiteConnection;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteConnection;I)V
    .registers 3
    .parameter
    .parameter "size"

    .prologue
    .line 1247
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->this$0:Landroid/database/sqlite/SQLiteConnection;

    .line 1248
    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    .line 1249
    return-void
.end method


# virtual methods
.method public dump(Landroid/util/Printer;)V
    .registers 10
    .parameter "printer"

    .prologue
    .line 1261
    const-string v6, "  Prepared statement cache:"

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1262
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    .line 1263
    .local v0, cache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_95

    .line 1264
    const/4 v2, 0x0

    .line 1265
    .local v2, i:I
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1266
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1267
    .local v5, statement:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    iget-boolean v6, v5, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    if-eqz v6, :cond_92

    .line 1268
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1269
    .local v4, sql:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": statementPtr=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", numParameters="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", readOnly="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v5, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sql=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Landroid/database/sqlite/SQLiteConnection;->access$300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1276
    .end local v4           #sql:Ljava/lang/String;
    :cond_92
    add-int/lit8 v2, v2, 0x1

    .line 1277
    goto :goto_18

    .line 1279
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;>;"
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #statement:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :cond_95
    const-string v6, "    <none>"

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1281
    :cond_9a
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1245
    check-cast p2, Ljava/lang/String;

    .end local p2
    check-cast p3, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .end local p3
    check-cast p4, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .end local p4
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->entryRemoved(ZLjava/lang/String;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .registers 6
    .parameter "evicted"
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 1254
    const/4 v0, 0x0

    iput-boolean v0, p3, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    .line 1255
    iget-boolean v0, p3, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    if-nez v0, :cond_c

    .line 1256
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->this$0:Landroid/database/sqlite/SQLiteConnection;

    invoke-static {v0, p3}, Landroid/database/sqlite/SQLiteConnection;->access$200(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1258
    :cond_c
    return-void
.end method
