.class Lcom/google/android/apps/nexuslauncher/experiment/b;
.super Lcom/google/android/gms/phenotype/j;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/phenotype/k;


# instance fields
.field private final yW:Landroid/content/SharedPreferences;

.field private final yX:Lcom/google/android/gms/common/api/r;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/r;)V
    .locals 3

    .line 47
    const-string v0, "com.google.android.apps.nexuslauncher"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/phenotype/j;-><init>(Lcom/google/android/gms/common/api/r;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/r;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phenotype_configs"

    .line 49
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/experiment/b;->yW:Landroid/content/SharedPreferences;

    .line 50
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/experiment/b;->yX:Lcom/google/android/gms/common/api/r;

    .line 51
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/phenotype/Configurations;)V
    .locals 12

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/experiment/b;->yW:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-boolean v1, p1, Lcom/google/android/gms/phenotype/Configurations;->acO:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/phenotype/Configurations;->acN:[Lcom/google/android/gms/phenotype/Configuration;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_8

    aget-object v5, v1, v4

    if-eqz v5, :cond_7

    iget-object v6, v5, Lcom/google/android/gms/phenotype/Configuration;->acD:[Ljava/lang/String;

    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    invoke-interface {v0, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, v5, Lcom/google/android/gms/phenotype/Configuration;->acC:[Lcom/google/android/gms/phenotype/Flag;

    array-length v6, v5

    move v7, v3

    :goto_2
    if-ge v7, v6, :cond_7

    aget-object v8, v5, v7

    iget v9, v8, Lcom/google/android/gms/phenotype/Flag;->adj:I

    const/4 v10, 0x3

    packed-switch v9, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget v9, v8, Lcom/google/android/gms/phenotype/Flag;->adj:I

    const/4 v11, 0x5

    if-ne v9, v11, :cond_2

    iget-object v9, v8, Lcom/google/android/gms/phenotype/Flag;->adi:[B

    invoke-static {v9, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    iget-object v8, v8, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a bytes type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    iget-object v9, v8, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    iget v10, v8, Lcom/google/android/gms/phenotype/Flag;->adj:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_3

    iget-object v8, v8, Lcom/google/android/gms/phenotype/Flag;->Vk:Ljava/lang/String;

    invoke-interface {v0, v9, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a String type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    iget-object v9, v8, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    iget v11, v8, Lcom/google/android/gms/phenotype/Flag;->adj:I

    if-ne v11, v10, :cond_4

    iget-wide v10, v8, Lcom/google/android/gms/phenotype/Flag;->adh:D

    double-to-float v8, v10

    invoke-interface {v0, v9, v8}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a double type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    iget-object v9, v8, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    iget v10, v8, Lcom/google/android/gms/phenotype/Flag;->adj:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    iget-boolean v8, v8, Lcom/google/android/gms/phenotype/Flag;->adg:Z

    invoke-interface {v0, v9, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a boolean type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    iget-object v9, v8, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    iget v10, v8, Lcom/google/android/gms/phenotype/Flag;->adj:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    iget-wide v10, v8, Lcom/google/android/gms/phenotype/Flag;->adf:J

    invoke-interface {v0, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a long type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_8
    const-string v1, "__phenotype_server_token"

    iget-object v2, p1, Lcom/google/android/gms/phenotype/Configurations;->acM:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "__phenotype_snapshot_token"

    iget-object p1, p1, Lcom/google/android/gms/phenotype/Configurations;->acL:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "PhenotypeFlagCommitter"

    const-string v0, "Failed to commit Phenotype configs to SharedPreferences!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_9
    const-string p1, "PhenotypeFlagCommitter"

    const-string v0, "Committed to new configuration from Phenotype"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r(Z)V
    .locals 3

    .line 65
    const-string v0, "PhenotypeFlagCommitter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Commit finished, result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/experiment/b;->yX:Lcom/google/android/gms/common/api/r;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/r;->disconnect()V

    .line 68
    return-void
.end method
