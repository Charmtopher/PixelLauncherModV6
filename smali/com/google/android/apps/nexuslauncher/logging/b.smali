.class Lcom/google/android/apps/nexuslauncher/logging/b;
.super Lcom/google/android/apps/nexuslauncher/e/e;
.source "SourceFile"


# instance fields
.field mApps:Ljava/util/List;

.field private final mContext:Landroid/content/Context;

.field zI:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 193
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/e/e;-><init>(Landroid/content/Context;)V

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->mApps:Ljava/util/List;

    .line 194
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->mContext:Landroid/content/Context;

    .line 195
    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 204
    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->zI:Z

    .line 205
    if-nez p1, :cond_0

    .line 206
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->mApps:Ljava/util/List;

    .line 207
    return-void

    .line 210
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 211
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->mApps:Ljava/util/List;

    return-void

    .line 213
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 214
    const-string p2, ";"

    invoke-virtual {p3, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 215
    array-length p3, p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_3

    aget-object v0, p2, p4

    .line 216
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/apps/nexuslauncher/e/b;->b(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_2

    .line 218
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 221
    :cond_3
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->mApps:Ljava/util/List;

    .line 223
    return-void
.end method
