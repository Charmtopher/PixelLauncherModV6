.class public Lcom/android/launcher3/util/ItemInfoMatcher$5;
.super Lcom/android/launcher3/util/ItemInfoMatcher;
.source "SourceFile"


# instance fields
.field final synthetic val$components:Ljava/util/HashSet;

.field final synthetic val$user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/launcher3/util/ItemInfoMatcher$5;->val$components:Ljava/util/HashSet;

    iput-object p2, p0, Lcom/android/launcher3/util/ItemInfoMatcher$5;->val$user:Landroid/os/UserHandle;

    invoke-direct {p0}, Lcom/android/launcher3/util/ItemInfoMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public final matches(Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/util/ItemInfoMatcher$5;->val$components:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p1, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object p2, p0, Lcom/android/launcher3/util/ItemInfoMatcher$5;->val$user:Landroid/os/UserHandle;

    invoke-virtual {p1, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
