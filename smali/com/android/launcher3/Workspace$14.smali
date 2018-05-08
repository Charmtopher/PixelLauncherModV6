.class Lcom/android/launcher3/Workspace$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field final synthetic val$operator:Lcom/android/launcher3/Workspace$ItemOperator;

.field final synthetic val$value:[Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/Workspace$ItemOperator;[Landroid/view/View;)V
    .locals 0

    .line 3075
    iput-object p1, p0, Lcom/android/launcher3/Workspace$14;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$14;->val$operator:Lcom/android/launcher3/Workspace$ItemOperator;

    iput-object p3, p0, Lcom/android/launcher3/Workspace$14;->val$value:[Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z
    .locals 1

    .line 3078
    iget-object v0, p0, Lcom/android/launcher3/Workspace$14;->val$operator:Lcom/android/launcher3/Workspace$ItemOperator;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/Workspace$ItemOperator;->evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3079
    iget-object p1, p0, Lcom/android/launcher3/Workspace$14;->val$value:[Landroid/view/View;

    aput-object p2, p1, v0

    .line 3080
    const/4 p1, 0x1

    return p1

    .line 3082
    :cond_0
    return v0
.end method
