.class Lcom/android/launcher3/util/ItemInfoMatcher$4;
.super Lcom/android/launcher3/util/ItemInfoMatcher;
.source "SourceFile"


# instance fields
.field final synthetic val$user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Landroid/os/UserHandle;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/android/launcher3/util/ItemInfoMatcher$4;->val$user:Landroid/os/UserHandle;

    invoke-direct {p0}, Lcom/android/launcher3/util/ItemInfoMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public final matches(Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 0

    .line 113
    iget-object p1, p1, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object p2, p0, Lcom/android/launcher3/util/ItemInfoMatcher$4;->val$user:Landroid/os/UserHandle;

    invoke-virtual {p1, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
