.class Lcom/android/launcher3/Workspace$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;J)V
    .locals 0

    .line 3043
    iput-object p1, p0, Lcom/android/launcher3/Workspace$11;->this$0:Lcom/android/launcher3/Workspace;

    iput-wide p2, p0, Lcom/android/launcher3/Workspace$11;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z
    .locals 2

    .line 3047
    if-eqz p1, :cond_0

    iget-wide p1, p1, Lcom/android/launcher3/ItemInfo;->id:J

    iget-wide v0, p0, Lcom/android/launcher3/Workspace$11;->val$id:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
