.class public Lcom/android/launcher3/anim/PropertySetter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/android/launcher3/anim/PropertySetter;

    invoke-direct {v0}, Lcom/android/launcher3/anim/PropertySetter;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V
    .locals 0

    .line 41
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public setInt(Ljava/lang/Object;Landroid/util/Property;ILandroid/animation/TimeInterpolator;)V
    .locals 0

    .line 46
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V
    .locals 0

    .line 33
    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 35
    invoke-static {p1}, Lcom/android/launcher3/anim/AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    .line 37
    :cond_0
    return-void
.end method
